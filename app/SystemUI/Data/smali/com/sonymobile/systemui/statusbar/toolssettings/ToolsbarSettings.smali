.class public Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;
.super Landroid/app/ListActivity;
.source "ToolsbarSettings.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private static createHashmap([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p0, "itemsString"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v3, Ljava/util/HashMap;

    array-length v6, p0

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 216
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 217
    .local v4, "s":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "stringArray":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 219
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "stringArray":[Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getAvailableToolsFromResources(I)Ljava/util/List;
    .locals 8
    .param p1, "stringArrayResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v5, "tools":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 151
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    const-string v6, "lte"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 162
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v6

    if-nez v6, :cond_1

    .line 163
    const-string v6, "tethering"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 170
    .restart local v4    # "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private getToolsItems()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v14, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "toolsbar_settings"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 96
    .local v18, "settingsFromDB":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060005

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->createHashmap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v13

    .line 99
    .local v13, "iconMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060006

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->createHashmap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    .line 102
    .local v21, "textMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const v22, 0x7f060004

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getAvailableToolsFromResources(I)Ljava/util/List;

    move-result-object v5

    .line 104
    .local v5, "allButtons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_2

    .line 106
    const-string v10, ";"

    .line 107
    .local v10, "divider1":Ljava/lang/String;
    const-string v11, ","

    .line 109
    .local v11, "divider2":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 110
    .local v17, "settings":[Ljava/lang/String;
    move-object/from16 v7, v17

    .local v7, "arr$":[Ljava/lang/String;
    array-length v15, v7

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v15, :cond_1

    aget-object v16, v7, v12

    .line 111
    .local v16, "setting":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 113
    .local v19, "settingsItem":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    const/16 v22, 0x0

    aget-object v22, v19, v22

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 114
    new-instance v24, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    const/16 v22, 0x0

    aget-object v25, v19, v22

    const/16 v22, 0x1

    aget-object v22, v19, v22

    const-string v23, "true"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v26

    const/16 v22, 0x0

    aget-object v22, v19, v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v23, v19, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 119
    .end local v16    # "setting":Ljava/lang/String;
    .end local v19    # "settingsItem":[Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 120
    .local v20, "str":Ljava/lang/String;
    new-instance v24, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    const/16 v25, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "divider1":Ljava/lang/String;
    .end local v11    # "divider2":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "len$":I
    .end local v17    # "settings":[Ljava/lang/String;
    .end local v20    # "str":Ljava/lang/String;
    :cond_2
    const v22, 0x7f060003

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getAvailableToolsFromResources(I)Ljava/util/List;

    move-result-object v8

    .line 127
    .local v8, "configButtons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 128
    .local v9, "configStr":Ljava/lang/String;
    new-instance v24, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    const/16 v25, 0x1

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 132
    .end local v9    # "configStr":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 133
    .local v6, "allStr":Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 134
    new-instance v24, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    const/16 v25, 0x0

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 139
    .end local v6    # "allStr":Ljava/lang/String;
    .end local v8    # "configButtons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    return-object v14
.end method


# virtual methods
.method public countSelectedItems()I
    .locals 6

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 277
    .local v0, "adapt":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 278
    .local v4, "length":I
    const/4 v3, 0x0

    .line 279
    .local v3, "item":Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    const/4 v1, 0x0

    .line 280
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 281
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "item":Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    check-cast v3, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    .line 282
    .restart local v3    # "item":Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    invoke-virtual {v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 280
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_1
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 308
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 309
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 310
    .local v1, "pos":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 311
    .local v2, "y":I
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 313
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v4, 0x7f040023

    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;

    .line 57
    .local v2, "listView":Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;
    new-instance v3, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings$1;-><init>(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;)V

    .line 78
    .local v3, "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;

    const v4, 0x7f040006

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getToolsItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, p0, v4, v5, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;>;"
    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->updateDataBase()V

    .line 85
    invoke-virtual {v2, v6}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setMovingItemEnabled(Z)V

    .line 86
    const v4, 0x7f070017

    invoke-virtual {v2, v4}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setMovingHandleViewId(I)V

    .line 87
    invoke-virtual {v2, p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setItemMovedListener(Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;)V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;

    .line 240
    .local v0, "listview":Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;
    if-eqz v0, :cond_0

    .line 241
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setItemMovedListener(Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;)V

    .line 243
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 244
    return-void
.end method

.method public onItemChanged(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Z)V
    .locals 3
    .param p1, "element"    # Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    .param p2, "isChecked"    # Z

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->countSelectedItems()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a000a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->setSelected(Z)V

    .line 271
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->updateDataBase()V

    goto :goto_0
.end method

.method public onItemCollapsed(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 261
    const v0, 0x7f070016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    return-void
.end method

.method public onItemExpanded(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "top"    # Z

    .prologue
    .line 257
    const v0, 0x7f070016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    return-void
.end method

.method public onItemMoved(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;

    .line 248
    .local v0, "adapter":Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;
    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    .line 250
    .local v1, "toolsItem":Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->remove(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v0, v1, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->insert(Ljava/lang/Object;I)V

    .line 252
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->updateDataBase()V

    .line 254
    .end local v1    # "toolsItem":Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 233
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 230
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->finish()V

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public updateDataBase()V
    .locals 8

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 291
    .local v0, "adapt":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 292
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 294
    .local v3, "item":Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 295
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "item":Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    check-cast v3, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    .line 296
    .restart local v3    # "item":Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    invoke-virtual {v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->isSelected()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 299
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toolsbar_settings"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 303
    return-void
.end method
