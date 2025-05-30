# Menus

## Common Stuff

### Common UI elements

common-ui-ok_button = OK button
common-ui-cancel_button = Cancel button
common-ui-confirm_button = Confirm button
common-ui-drop_item_button = Drop item button
common-ui-trashcan_button = Trashcan
common-ui-organize_inventory_button = Organize inventory button
common-ui-community_center_button = Community center button
common-ui-scroll_up_button = Scroll up button
common-ui-scroll_down_button = Scroll down button
common-ui-next_page_button = Next page button
common-ui-previous_page_button = Previous page button
common-ui-close_menu_button = Close menu button
common-ui-back_button = Back button
common-ui-forward_button = Forward button
common-ui-equipment_slots = {$slot_name ->
    [hat] Hat
    [left_ring] Left ring
    [right_ring] Right ring
    [boots] Boots
    [shirt] Shirt
    [pants] Pants
    *[other] {EMPTYSTRING()}
  } slot{$is_empty ->
    [0] : {$item_name}, {$item_description}
    *[1] {EMPTYSTRING()}
  }

### Options Element

options_element-button_info = {$label} button
options_element-text_box_info = {$label} text box{$value ->
    [null] {EMPTYSTRING()}
    *[other] : {$value}
  }
options_element-checkbox_info = {$is_checked ->
    [0] Disabled
    *[1] Enabled
  } {$label} checkbox
options_element-dropdown_info = {$label} dropdown, option {$selected_option} selected
options_element-slider_info = {$slider_value}% {$label} slider
options_element-plus_minus_button_info = {$selected_option} selected of {$label}
options_element-input_listener_info = {$label} is bound to {$buttons_list}. Left click to change.

## Custom Menus

### Tile Info Menu

menu-tile_info-mark_tile = Mark this tile
menu-tile_info-select_marking_index = Select index
menu-tile_info-add_to_user_tiles_data = Add this tile to user tiles data
menu-tile_info-detailed_tile_info = Speak detailed tile info
menu-tile_info-data_exists = Tile data already exist, do you want to
menu-tile_info-edit_existing_data = Edit data?
menu-tile_info-delete_existing_data = Delete data?

### Tile Data Entry Menu

menu-tile_data_entry-none = None
menu-tile_data_entry-heading_label = Tile {$tile_x}x {$tile_y}y in {$location_name}
menu-tile_data_entry-tile_name_text_box_label = Tile name
menu-tile_data_entry-tile_name_empty = Tile name cannot be empty or null
menu-tile_data_entry-categories_drop_down_label = Category
menu-tile_data_entry-mod_dependency_drop_down_label = Mod dependency
menu-tile_data_entry-event_check_box_label = Check for current {$is_festival ->
    [0] {$is_wedding ->
        [0] event,
        *[1] wedding,
      }
    *[1] festival: {$festival_name},
  } id: {$event_id}
menu-tile_data_entry-farm_type_check_box_label = Check for current farm type: {$farm_type}
menu-tile_data_entry-farm_house_upgrade_level_drop_down_label = Check for farm house upgrade level
menu-tile_data_entry-quest_drop_down_label = Check if player has quest
menu-tile_data_entry-quest_drop_down-manual_entry_option = Enter quest id manually
menu-tile_data_entry-manual_quest_id_text_box_label = Quest id
menu-tile_data_entry-joja_member_checkbox_label = Check if player is Joja member

## Bundle Menus

### Common

menu-bundle-completed-prefix = Completed {$content}

### JoJa CD Menu

menu-joja_cd-project_info = {$name}, Cost: {$price}g, Description: {$description}
menu-joja_cd-project_name = {$project_index ->
    [0] Bus
    [1] Minecarts
    [2] Bridge
    [3] Greenhouse
    [4] Panning
    *[other] Unknown
  } Project

### Junimo Note Menu

menu-junimo_note-scrambled_text = Scrambled text
menu-junimo_note-current_area_info-prefix = Area: {$area_name}, {$completion_reward}, 
menu-junimo_note-bundle_open_button = {$bundle_name} bundle
menu-junimo_note-input_slot = Input Slot {$index}
menu-junimo_note-collect_rewards = Collect rewards
menu-junimo_note-next_area_button = Next area button
menu-junimo_note-previous_area_button = Previous area button
menu-junimo_note-back_button = Back button
menu-junimo_note-purchase_button = Purchase button

## Donation Menus

menu-donation_common-donatable_item_in_inventory-prefix = Donatable {$content}

### Field Office Menu

# TODO maybe make a range function
menu-field_office-incomplete_slot_names = {$slot_index ->
   [0] Center skeleton
   [1] Center skeleton
   [2] Center skeleton
   [3] Center skeleton
   [4] Center skeleton
   [5] Center skeleton
   [6] Snake
   [7] Snake
   [8] Snake
   [9] Bat
   [10] Frog
   *[other] Donation
  } slot
menu-field_office-completed_slot_info = Slot {$slot_index} finished: {$item_name_in_slot}

### Museum Menu

menu-museum-slot_info = Slot {$x_position}x {$y_position}y

## Game Menus

menu-game_menu-tab_names = {$tab_name} Tab {$is_active ->
    [0] {EMPTYSTRING()}
    *[1] Active
  }

### Inventory Page

menu-inventory_page-money_info_key = {$farm_name}, {$current_funds}, {$total_earnings}{SIGNOFNUMBER($festival_score) ->
    [positive] , Festival score: {$festival_score}
    *[other] {EMPTYSTRING()}
  }{SIGNOFNUMBER($golden_walnut_count) ->
    [positive] , Golden walnut: {$golden_walnut_count}
    *[other] {EMPTYSTRING()}
  }{SIGNOFNUMBER($qi_gem_count) ->
    [positive] , Qi gems: {$qi_gem_count}
    *[other] {EMPTYSTRING()}
  }{SIGNOFNUMBER($qi_club_coins) ->
    [positive] , Qi club coins: {$qi_club_coins}
    *[other] {EMPTYSTRING()}
  }

### Social Page

menu-social_page-npc_info = {$name}{$has_talked ->
    [0] , not talked yet
    *[1] {EMPTYSTRING()}
    [2] , not met yet
  }{$relationship_status ->
    [null] {EMPTYSTRING()}
    *[other] , {$relationship_status}
  }, {$heart_level} {$heart_level ->
    [1] heart
    *[other] hearts
  }, {$gifts_this_week} {$gifts_this_week ->
    [1] gift
    *[other] gifts
  } given this week.

menu-social_page-player_info = {$name}{$relationship_status ->
    [null] {EMPTYSTRING()}
    *[other] , {$relationship_status}
  }

### Collections Page
menu-collections_page-tabs = {$tab_name} tab {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] selected
  }
menu-collections_page-unachieved = Unachieved
menu-collections_page-uncaught = Uncaught
menu-collections_page-uncooked = Uncooked
menu-collections_page-unfound = Unfound
menu-collections_page-unshipped = Unshipped

### Crafting Page

menu-crafting_page-recipe_info = {$produce_count} {$name}, {$is_craftable ->
    [0] not craftable
    *[1] craftable
  }, Ingredients: {$ingredients}, Description: {$description}, {$buffs}
menu-crafting_page-unknown_recipe = Unknown recipe
menu-crafting_page-previous_recipe_list_button = Previous recipe list button
menu-crafting_page-next_recipe_list_button = Next recipe list button

### Exit Page

menu-exit_page-exit_to_title_button = Exit to title button
menu-exit_page-exit_to_desktop_button = Exit to desktop button

### Skills Page

menu-skills_page-player_info = {$name}, {$title}{$golden_walnut_count ->
    [0] {EMPTYSTRING()}
    [1] , 1 Golden Walnut
    *[other] , {$golden_walnut_count} Golden Walnuts
  }{$qi_gem_count ->
    [0] {EMPTYSTRING()}
    [1] , 1 Qi gem
    *[other] , {$qi_gem_count} Qi gems
  }{$house_upgrade_level ->
    [1] {EMPTYSTRING()}
    [2] , house upgraded to second level
    [3] , house upgraded to third level
    [4] , house upgraded to fourth level
    *[other] , house upgraded to level {$house_upgrade_level}
  }{$lowest_mine_level ->
    [0] {EMPTYSTRING()}
    *[other] , lowest mine level reached: {$lowest_mine_level}
  }{$stardrop_count ->
    [0] {EMPTYSTRING()}
    [1] , 1 Stardrop
    *[other] , {$stardrop_count} Stardrops
  }{$mastery_level ->
    [-1] {EMPTYSTRING()}
    *[other] , Mastery level {$mastery_level}, {$current_mastery_points} out of {$required_mastery_points} points
  }
menu-skills_page-skill_info = {$name} at level {$level},
  {$buffs}

### Animal Page

menu-animal_page-animal_info = {$name}, {$type}{$heart_count ->
    [-1] {EMPTYSTRING()}
    [1] , 1 heart
    *[other] , {$heart_count} hearts
  }{$has_been_pet ->
    [0] , not pet yet
    *[other] {EMPTYSTRING()}
  }{$has_received_animal_cracker ->
    [0] {EMPTYSTRING()}
    *[other], eaten animal cracker
  }

## Menus With Inventory

### Forge Menu

menu-forge-start_forging_button = Start forging button
menu-forge-unforge_button = Unforge button
menu-forge-weapon_input_slot = {$is_empty ->
    [0] Weapon slot: {$item_name}
    *[1] Place weapon, tool or ring here
  }
menu-forge-gemstone_input_slot = {$is_empty ->
    [0] Gemstone slot: {$item_name}
    *[1] Place gemstone or ring here
  }

### Geode Menu

menu-geode-geode_input_slot = Place geode here
menu-geode-received_treasure_info = Received {$treasure_name}

### Item Grab Menu

menu-item_grab-last_shipped_info = Last shipped: {$shipped_item_name}
menu-item_grab-add_to_existing_stack_button = Add to existing stacks button
menu-item_grab-special_button = Special button
menu-item_grab-color_picker_button = Color picker: {$is_enabled ->
    [0] Disabled
    *[1] Enabled
  }
menu-item_grab-chest_colors =
  {$index ->
   [0] Chest color: Brown (default)
   [1] Blue
   [2] Light Blue
   [3] Teal
   [4] Aqua
   [5] Green
   [6] Lime Green
   [7] Yellow
   [8] Light Orange
   [9] Orange
   [10] Red
   [11] Dark Red
   [12] Light Pink
   [13] Pink
   [14] Magenta
   [15] Purple
   [16] Dark Purple
   [17] Dark Grey
   [18] Medium Grey
   [19] Light Grey
   [20] White
   *[other] Unknown
  } {$is_selected ->
  [0] {EMPTYSTRING()}
  *[1] selected
  }

### Shop menu

menu-shop-buy_price_info = Buy price: {$price}g
menu-shop-recipe_ingredients_info = Ingredients: {$ingredients_list}
menu-shop-pet_license-suffix = {$content} license

### Tailoring Menu

menu-tailoring-start_tailoring_button = Start tailoring button
menu-tailoring-cloth_input_slot = {$is_empty ->
    [0] Cloth slot: {$item_name}
    *[1] Place cloth or dyeable clothing here
  }
menu-tailoring-spool_slot = {$is_empty ->
    [0] Spool: {$item_name}
    *[1] Place materials here
  }

## Misc Patches

### Dialogue Box

menu-dialogue_box-npc_dialogue_format = {$is_appearing_first_time ->
    [0] {EMPTYSTRING()}
    *[1] {$npc_name} said,
  } {$dialogue}

## Other Menu Patches

### Animal Query Menu

menu-animal_query-animal_info =
  {$name}, {$is_baby ->
    [0] {$type}
    *[1] Baby {$type}
  }, {$heart_count ->
    [1] 1 heart
    *[other] {$heart_count} hearts
  }, {$age ->
    [1] 1 month
    *[other] {$age} months
  } old{$parent_name ->
    [null] {EMPTYSTRING()}
    *[other] , Parent: {$parent_name}.
  }, {$mood}{$has_received_animal_cracker ->
    [0] {EMPTYSTRING()}
    *[other], eaten animal cracker
  }
menu-animal_query-confirm_selling_button = Confirm selling animal button
menu-animal_query-cancel_selling_button = Cancel selling animal button
menu-animal_query-selling_button = Sell for {$price}g button
menu-animal_query-move_home_button = Change home building button
menu-animal_query-text_box = Animal name text box
menu-animal_query-allow_reproduction_button =
  {$checkbox_value ->
    [0] Disabled
    *[1] Enabled
  } allow pregnancy button

### Building Skin Menu

# Cabin skins: [0 = default] [1 = plank] [2 = log] [3 = neighbour] [4 = rustic] [5 = beach] [6 = trailer]
# Pet bowl skins: [0 = default] [1 = stone] [2 = hay]

menu-building_skin-skin_info = {$type ->
    [cabin] {$index ->
        [0] Default Cabin
        [1] {$id}
        [2] {$id}
        [3] {$id}
        [4] {$id}
        [5] {$id}
        [6] {$id}
        *[other] Uknown Cabin Skin, id:{$id}, index:{$index}
      }
    [pet_bowl] {$index ->
        [0] Default Pet Bowl
        [1] {$id}
        [2] {$id}
        *[other] Uknown Pet Bowl Skin, id:{$id}, index:{$index}
      }
    *[other] {$index}: {$id}
  }
menu-building_skin-next_skin_button = Next Skin
menu-building_skin-previous_skin_button = Previous Skin

### Carpenter Menu

menu-carpenter-blueprint_info = {$name}, Price: {$price}g, Ingredients: {$ingredients_list}, {$days ->
    [0] builds instantly
    [1] 1 day to build
    *[other] {$days} days to build
  }, Dimensions: {$width} width and {$height} height, Description: {$description}
menu-carpenter-previous_blueprint_button = Previous blueprint
menu-carpenter-next_blueprint_button = Next blueprint
menu-carpenter-move_building_button = Move building
menu-carpenter-paint_building_button = Paint building
menu-carpenter-appearance_button = Change Appearance
menu-carpenter-demolish_building_button = Demolish building{$can_demolish ->
    [0] , cannot demolish building
    *[1] {EMPTYSTRING()}
  }
menu-carpenter-construct_building_button = Construct building{$can_construct ->
    [0] , cannot construct building
    *[1] {EMPTYSTRING()}
  }

### Choose From Icons Menu

menu-choose_from_icons-bobber_styles = {$bobber_id ->
    [locked] Locked
    [id_1] Red
    [id_2] Blue
    [id_3] Green
    [id_4] Yellow
    [id_5] Red and blue
    [id_6] Green and yellow
    [id_7] Pink ball
    [id_8] Smiley
    [id_9] Skull
    [id_10] Duck
    [id_11] Dog
    [id_12] Light blue ball
    [id_13] Clay
    [id_14] Sap
    [id_15] Junimo
    [id_16] Cat
    [id_17] Heart
    [id_18] Joja Cola
    [id_19] Bear?
    [id_20] Hook
    [id_21] Pink Cat
    [id_22] Frigate
    [id_23] Jelly starfish
    [id_24] Boot
    [id_25] Twig
    [id_26] Lotus
    [id_27] Baseball
    [id_28] Burger
    [id_29] Light blue and purple
    [id_30] Green orb??
    [id_31] Yellow Cake??
    [id_32] Dust sprite with red eyes?
    [id_33] Emerald
    [id_34] Green Fireball
    [id_35] Snowball
    [id_36] Crystal
    [id_37] Goat? Cow?
    [id_38] Diamond
    [id_39] Starfruit
    *[other] Unknown bobber style with id {$bobber_id}
  } {$selected ->
    [0] {EMPTYSTRING()}
    *[1] Selected
  }

### Choose From List Menu

menu-choose_from_list-ok_button = Select {$option} button
menu-choose_from_list-previous_button = Previous option: {$option} button
menu-choose_from_list-next_button = Next option: {$option} button

### Confirmation Dialogue Menu

# TODO try this
# menu-confirmation_dialogue-ok_button = {$dialogue_message}
#   {I18N("common-ui-ok_button", mod:"shoaib.stardewaccess")}
menu-confirmation_dialogue-ok_button = {$dialogue_message}
  Ok button
menu-confirmation_dialogue-cancel_button = {$dialogue_message}
  Cancel button
menu-confirmation_dialogue-copy_button = {$dialogue_message}
  Copy to clipboard button

### Item List Menu

menu-item_list-ok_button = {$title}
  {$item_list}
  Page {$current_page} of {$total_pages}
  Ok button

### Letter Viewer Menu

menu-letter_viewer-letter_message = {$message_content}{$is_money_included ->
    [0] {EMPTYSTRING()}
    *[1] , Got {$received_money}g
  }{$learned_any_recipe ->
    [0] {EMPTYSTRING()}
    *[1] , {$learned_recipe}
  }{$is_quest ->
    [0] {EMPTYSTRING()}
    *[1] , Left click to accept quest
  }
menu-letter_viewer-pagination_text-prefix = Page {$current_page} of {$total_pages}
  {$content}
menu-letter_viewer-grabbable_item_text = Left click to collect {$name}
menu-letter_viewer-image_note = {$note_id ->
    [11] Image of a young Marnie holding hands with toddler Jas. They are surrounded by farm animals on the ranch.
    [16] A treasure map depicting a large boulder NorthWest of the railroad tracks. A red X is placed to the right of the boulder.
    [17] A treasure map depicting the river north of Joja Mart with a Red X featured in the North Easternmost Corner
    [18] A treasure map depicting a bench in the Southeast corner of the Calico desert, featuring a red X to the southwest.
    [19] A depiction of 1 Willow Lane with a series of arrows. A square marks the space in front of the front door. The sequence reads as left, up, right, up, right, down, left, down, left, down, check mark.
    [20] a depiction of town square with a series of arrows. The depiction notes an area in the very center of the square. The sequence is as follows, right, down, right, up, right, up, right, down, left, up, left, up, right, up, left, up, left, check mark.
    [21] A depiction of the large bush to the northwest of the bridge to the beach, at night. A clock displays the time 12:40.
    *[other] Undescribed image {$note_id}
  }

### Level Up Menu

menu-level_up-profession_chooser_heading = {$title}. Select a new profession.
menu-level_up-profession_chooser_button = Selected: {$profession_description_list}
  Left click to choose.
menu-level_up-ok_button = {$title}, {$extra_info}, Learned recipes: {$learned_recipes}, Left click to close.

### Mastery Menus

menu-mastery-pedestial_info = {$final_path_text} {$current_points} out of {$required_points},
  {$stars ->
    [1] 1 star
    *[other] {$stars} stars
  }
menu-mastery-walls-claim_button = {$name},
  {$rewards},
  Claim button

### Naming Menu

menu-naming-done_naming_button = Done button
menu-naming-random_button = Random button


### Number Selection Menu

menu-number_selection-button-left_button = Decrease value button
menu-number_selection-button-right_button = Increase value button
menu-number_selection-value_and_price_info = {$value} {$price ->
    [0] {EMPTYSTRING()}
    *[other] Price: {$price}
  }

### Pond Query Menu

menu-pond_query-change_netting_button = Change netting button
menu-pond_query-empty_pond_button = Empty pond button
menu-pond_query-pond_info = {$pond_name}, {$population_info}, {$required_item_info}, Status: {$status}

### Prize Ticket Menu

menu-prize_ticket-collect_prize_button = Current prizes: {$prize_items}
  You have {$prize_ticket_count ->
    [1] 1 prize ticket
    *[other] {$prize_ticket_count} prize tickets
  }, collect prize button

### Purchase Animal Menu

menu-purchase_animal-animal_info = {$name}, Price: {$price}g, Description: {$description}
menu-purchase_animal-first_time_in_menu_info = Enter the name of animal in the name text box.
menu-purchase_animal-random_name_button = Random name button
menu-purchase_animal-animal_name_text_box = Name text box{$value ->
    [null] {EMPTYSTRING()}
    *[other] , Value: {$value}
  }

### Title Text Input Menu

menu-title_text_input-paste_button = Paste button

### Renovate Menu

menu-renovate-info = Left click to renovate. Affected areas,
  {$areas_info}
menu-renovate-area_dimension_info = {$index}: At {$tile_x} {$tile_y} with {$width} width and {$height} height,


### Shipping Menu

menu-shipping-total_money_received_info = Received {$money}g in total. Left click to save.
menu-shipping-money_received_from_category_info = {$money}g received from {$category_name}.

## Quest Patches

### Billboard Menu

menu-billboard-calendar-day_info = {$is_current ->
    [0] {EMPTYSTRING()}
    *[1] Current
  } Day {$day ->
    [1] {$day} of {$season} year {$year}
    *[other] {$day}
  }{$extra_info ->
    [null] {EMPTYSTRING()}
    *[other] , {$extra_info}
  }
menu-billboard-daily_quest-accept_quest-suffix =
  Left click to accept quest.

### Quest Log Menu (Journal Menu)

menu-quest_log-cancel_quest_button = Cancel quest button
menu-quest_log-reward_button = Collect reward button
menu-quest_log-quest_brief = {$name} {$is_completed ->
    [0] {SIGNOFNUMBER($days_left) ->
      [positive] , {$days_left} {$days_left ->
        [1] day
        *[other] days
      } left
      *[other] {EMPTYSTRING()}
    }
    *[1] completed!
  }
menu-quest_log-quest_detail = {$name} {$is_completed ->
    [0] , Description: {$description}, Objectives: {$objectives_list} {SIGNOFNUMBER($days_left) ->
      [positive] , {$days_left} {$days_left ->
        [1] day
        *[other] days
      } left
      *[other] {EMPTYSTRING()}
    }
    *[1] completed! {$has_received_money ->
      [0] {EMPTYSTRING()}
      *[1] Collect {$received_money}g
    }
  }

### Special Orders Board Menu

menu-special_orders_board-quest_details = {$name}, Description: {$description}, Objectives: {$objectives_list}{$is_timed ->
    [0] {EMPTYSTRING()}
    *[1] , Time: {$days} {$days ->
      [1] day
      *[other] days
    }
  }{$has_money_reward ->
    [0] {EMPTYSTRING()}
    *[1] , Reward: {$money}
  }
menu-special_orders_board-accept_button = {$is_left_quest ->
    [0] Right
    *[1] Left
  } quest: {$quest_details}
  Left click to accept this quest.
menu-special_orders_board-quest_in_progress = In progress: {$quest_details}
menu-special_orders_board-quest_completed = Quest {$name} completed! Open journal to collect your reward.

## Title Menus

### Title Menu

menu-title-stardew_access_loaded = Stardew Access version {$version} Loaded {$cheats ->
    [1] with cheats enabled
    *[0] {EMPTYSTRING()}
  }
menu-title-click_to_skip = Left click to skip the title screen
menu-title-new_game_button = New game button
menu-title-load_button = Load button
menu-title-co_op_button = Co-op button
menu-title-language_button = Language button
menu-title-about_button = About button
menu-title-mute_music_button = Mute music button
menu-title-fullscreen_button = Fullscreen: {$is_enabled ->
    [0] disabled
    *[1] enabled
  }
menu-title-exit_button = Exit button
menu-title-invite_button = Invite button

### Load Game Menu

menu-load_game-delete_farm_button = Delete {$name} farm
menu-load_game-delete_farm_confirmation_text = Really delete farm?
menu-load_game-farm_details = {$index ->
    [-1] {EMPTYSTRING()}
    *[other] {$index}
  } {$farm_name} Farm, {$farmer_name}, {$money ->
    [-1] {EMPTYSTRING()}
    *[other] {$money}g
  }, {$date}, {$hours_played} hours played

### Co-op Menu

menu-co_op-join_lan_game_button = Join lan game
menu-co_op-host_new_farm_button = Host new farm
menu-co_op-refresh_button = Refresh Button
menu-co_op-join_tab_button = Join tab {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] selected
  }
menu-co_op-host_tab_button = Host tab {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] selected
  }
menu-co_op-friend_hosted_farm_details = {$farm_name}, Owner: {$owner_name}, {$date}
