.class public Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;,
        Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;
    }
.end annotation


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private c:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

.field private final g:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

.field private final h:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 183
    new-instance v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    .line 306
    new-instance v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->h:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    return-void
.end method

.method public static a(Z)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;-><init>()V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "reorder_icon_position"

    .line 72
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->c:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    return-object p0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 200
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->d:Z

    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    iget v3, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    const-string v3, "|"

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 173
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    const v0, 0x7f130073

    .line 175
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 176
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 177
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0b0194

    .line 178
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private b(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 215
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    iget v3, v3, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    const-string v3, "|"

    .line 217
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->d:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method protected final a()Landroid/content/SharedPreferences;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "music_player_pref"

    const/4 v2, 0x0

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->a:Landroid/content/SharedPreferences;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->e:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected b()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 234
    invoke-static {v1}, Lcom/samsung/android/app/music/util/TabUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 236
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    new-instance v2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$1;)V

    .line 239
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 240
    iput v4, v2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->a:I

    .line 241
    invoke-static {v4}, Lcom/samsung/android/app/music/util/ListUtils;->a(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->b:Ljava/lang/String;

    .line 242
    invoke-static {v4}, Lcom/samsung/android/app/music/util/TabUtils;->a(I)Z

    move-result v5

    iput-boolean v5, v2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->c:Z

    .line 243
    invoke-static {v1, v4}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;I)Z

    move-result v4

    iput-boolean v4, v2, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->d:Z

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    .line 84
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "402"

    .line 85
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0401e0

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 9

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;

    .line 155
    sget-object v2, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$ManageTabs;->a:Landroid/util/SparseArray;

    iget v3, v1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->a:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 157
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "402"

    iget-boolean v5, v1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->d:Z

    if-eqz v5, :cond_1

    const-string v5, "ON"

    :goto_1
    move-object v6, v5

    goto :goto_2

    :cond_1
    const-string v5, "OFF"

    goto :goto_1

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->d:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    int-to-long v7, v5

    move-object v5, v2

    .line 158
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 164
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, v1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter$ReorderItem;->d:Z

    if-eqz v1, :cond_2

    const-string v1, "On"

    goto :goto_3

    :cond_2
    const-string v1, "Off"

    .line 163
    :goto_3
    invoke-static {v3, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tab_menu_list_order"

    .line 136
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->d:Ljava/util/ArrayList;

    .line 137
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tab_menu_list"

    .line 138
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->d:Ljava/util/ArrayList;

    .line 139
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 127
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "more_settings_2nd_manage_tabs"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;->addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;->removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->a(Landroid/app/Activity;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->d:Ljava/util/ArrayList;

    const v0, 0x7f1304de

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 105
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    const/4 p2, 0x0

    new-array p2, p2, [I

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    const/16 p2, 0xf

    .line 106
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(I)V

    .line 107
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const p2, 0x7f0f003d

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setBackgroundResource(I)V

    .line 110
    new-instance p1, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;-><init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->c:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->c:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    new-instance p1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->h:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-direct {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->e:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->e:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method
