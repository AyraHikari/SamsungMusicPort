.class public abstract Lcom/samsung/android/app/music/settings/SettingsListActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;,
        Lcom/samsung/android/app/music/settings/SettingsListActivity$MultiWindowChangeListener;,
        Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;
    }
.end annotation


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/widget/ListView;

.field private c:I

.field private d:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

.field private e:Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;

.field private f:Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

.field private g:Landroid/view/ViewGroup;

.field private final h:Landroid/widget/AdapterView$OnItemClickListener;

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 187
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsListActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$1;-><init>(Lcom/samsung/android/app/music/settings/SettingsListActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 195
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsListActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$2;-><init>(Lcom/samsung/android/app/music/settings/SettingsListActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->i:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/SettingsListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000f5

    .line 284
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :cond_0
    const v0, 0x7f130203

    .line 286
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 288
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/SettingsListActivity;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    .line 266
    invoke-static {p0}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 267
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const v1, 0x7f10008f

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ge v0, p1, :cond_1

    sub-int/2addr p1, v0

    .line 272
    div-int/lit8 v1, p1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 278
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/SettingsListActivity;)Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->e:Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;

    return-object p0
.end method

.method private b(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 294
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0311

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020320

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 296
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/settings/SettingsListActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->c:I

    return p0
.end method


# virtual methods
.method abstract a()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;
.end method

.method a(IZ)V
    .locals 2

    .line 158
    iput p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->c:I

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method a(Ljava/lang/String;I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method a(Ljava/lang/String;J)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method abstract b()I
.end method

.method c()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method d()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->f:Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    return-object v0
.end method

.method e()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->c:I

    return v0
.end method

.method f()Landroid/content/SharedPreferences;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 148
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(I)V

    .line 150
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040246

    .line 72
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a()Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->f:Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->f:Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a()I

    move-result p1

    .line 77
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 79
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->f:Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->c(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "music_player_pref"

    .line 82
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a:Landroid/content/SharedPreferences;

    const p1, 0x7f130370

    .line 84
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->h:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    const p1, 0x7f130566

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->g:Landroid/view/ViewGroup;

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->g:Landroid/view/ViewGroup;

    instance-of p1, p1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->g:Landroid/view/ViewGroup;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    const/16 v3, 0xf

    const v4, 0x7f0f003a

    .line 91
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 90
    invoke-interface {p1, v3, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    .line 94
    :cond_1
    new-array p1, v2, [I

    const v3, 0x10100fb

    aput v3, p1, v1

    const v3, 0x1010074

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0, v4, p1, v3, v1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 98
    iget-object v5, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    new-instance p1, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;

    const v3, 0x7f0400e9

    invoke-direct {p1, p0, p0, v3, v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;-><init>(Lcom/samsung/android/app/music/settings/SettingsListActivity;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->e:Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->e:Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingsAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->c()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 106
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040244

    .line 107
    invoke-virtual {v0, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v4, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(IZ)V

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    .line 114
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 115
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsListActivity$MultiWindowChangeListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$MultiWindowChangeListener;-><init>(Lcom/samsung/android/app/music/settings/SettingsListActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->a(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->b(I)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->d()V

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 184
    iput p3, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->c:I

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStart()V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->i:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsListActivity;->i:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity;->removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 131
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStop()V

    return-void
.end method
