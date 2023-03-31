<?php

/**
 * NukeViet Content Management System
 * @version 4.x
 * @author VINADES.,JSC <contact@vinades.vn>
 * @copyright (C) 2009-2021 VINADES.,JSC. All rights reserved
 * @license GNU/GPL version 2 or any later version
 * @see https://github.com/nukeviet The NukeViet CMS GitHub project
 */

if (!defined('NV_MAINFILE')) {
    exit('Stop!!!');
}

if (!nv_function_exists('nv_list_service')) {
    /**
     * nv_block_config_list_service()
     *
     * @param string $module
     * @param array  $data_block
     * @param array  $lang_block
     * @return string
     */
    function nv_block_config_list_service($module, $data_block, $lang_block)
    {
        $html = '';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['title_length'] . ':</label>';
        $html .= '	<div class="col-sm-9"><input type="text" class="form-control" name="config_title_length" value="' . $data_block['title_length'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['numrow'] . ':</label>';
        $html .= '	<div class="col-sm-9"><input type="text" name="config_numrow" class="form-control" value="' . $data_block['numrow'] . '"/></div>';
        $html .= '</div>';

        return $html;
    }

    /**
     * nv_block_config_list_service_submit()
     *
     * @param string $module
     * @param array  $lang_block
     * @return array
     */
    function nv_block_config_list_service_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = [];
        $return['error'] = [];
        $return['config'] = [];
        $return['config']['title_length'] = $nv_Request->get_int('config_title_length', 'post', 24);
        $return['config']['numrow'] = $nv_Request->get_int('config_numrow', 'post', 5);

        return $return;
    }

    /**
     * nv_list_service()
     *
     * @param array $block_config
     * @return string
     */
    function nv_list_service($block_config)
    {
        global $nv_Cache, $global_config, $site_mods, $db;
        $module = $block_config['module'];

        $module_upload = 'page';

        if (!isset($site_mods[$module])) {
            return '';
        }

        $db->sqlreset()->select('id, title, alias, image, imagealt, description')->from(NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'])->where('status = 1')->order('weight ASC')->limit($block_config['numrow']);

        $list = $nv_Cache->db($db->sql(), 'id', $module);

        if (!empty($list)) {
            if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/page/block.list_service.tpl')) {
                $block_theme = $global_config['module_theme'];
            } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/modules/page/block.list_service.tpl')) {
                $block_theme = $global_config['site_theme'];
            } else {
                $block_theme = 'default';
            }

            $xtpl = new XTemplate('block.list_service.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/page');

            foreach ($list as $l) {
                //Xử lý hình ảnh
                if (!empty($l['image'])) {
                    if (!nv_is_url($l['image'])) {
                        $imagesize = @getimagesize(NV_UPLOADS_REAL_DIR . '/' . $module_upload . '/' . $l['image']);
                        $meta_property['og:image'] = NV_MY_DOMAIN . NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $l['image'];
                        $meta_property['og:image:url'] = $meta_property['og:image'];
                        $meta_property['og:image:type'] = $imagesize['mime'];
                        $meta_property['og:image:width'] = $imagesize[0];
                        $meta_property['og:image:height'] = $imagesize[1];
                        $meta_property['og:image:alt'] = $l['imagealt'] ?: $l['title'];

                        $srcset = '';
                        if (file_exists(NV_ROOTDIR . '/' . NV_MOBILE_FILES_DIR . '/' . $module_upload . '/' . $l['image'])) {
                            $srcset = NV_BASE_SITEURL . NV_MOBILE_FILES_DIR . '/' . $module_upload . '/' . $l['image'] . ' ' . NV_MOBILE_MODE_IMG . 'w, ';
                            $srcset .= NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $l['image'] . ' ' . $imagesize[0] . 'w';
                        }

                        $l['thumb'] = [
                            'src' => file_exists(NV_ROOTDIR . '/' . NV_FILES_DIR . '/' . $module_upload . '/' . $l['image']) ? NV_BASE_SITEURL . NV_FILES_DIR . '/' . $module_upload . '/' . $l['image'] : NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $l['image'],
                            'width' => 100
                        ];
                        $l['img'] = [
                            'src' => NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $l['image'],
                            'srcset' => $srcset,
                            'width' => $imagesize[0] > 500 ? 500 : $imagesize[0]
                        ];
                    } else {
                        $l['thumb'] = [
                            'src' => $l['image'],
                            'width' => 100
                        ];
                        $l['img'] = [
                            'src' => $l['image'],
                            'srcset' => '',
                            'width' => 500
                        ];
                    }
                    $xtpl->assign('img', $l['img']);
                    $xtpl->parse('main.loop.image');
                }


                $l['title_clean60'] = nv_clean60($l['title'], $block_config['title_length']);
                $l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $l['alias'] . $global_config['rewrite_exturl'];
                $xtpl->assign('ROW', $l);
                $xtpl->parse('main.loop');
            }

            $xtpl->parse('main');

            return $xtpl->text('main');
        }

        return '';
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_list_service($block_config);
}
