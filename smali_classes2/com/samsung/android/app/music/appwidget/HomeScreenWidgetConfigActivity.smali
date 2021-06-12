.class public final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f13058b

    return p1

    :cond_0
    const p1, 0x7f13058c

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;I)I
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->b(I)I

    move-result p0

    return p0
.end method

.method private a()V
    .locals 2

    const v0, 0x7f130143

    .line 165
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->e()V

    return-void
.end method

.method private b(I)I
    .locals 1

    const v0, 0x7f13058b

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b()V
    .locals 4

    const v0, 0x7f130073

    .line 171
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 173
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    .line 175
    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v3, 0x7f0b01ea

    .line 176
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const v3, 0x7f0f0309

    .line 177
    invoke-static {v1, v3, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 178
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const v3, 0x7f0f02fe

    .line 181
    invoke-static {v1, v3, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->g()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->c(I)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 187
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->a:I

    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->c:I

    if-eq v0, v1, :cond_0

    .line 188
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "background_color"

    iget v2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 190
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->b:I

    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->d:I

    if-eq v0, v1, :cond_1

    .line 191
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "background_alpha"

    iget v2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 194
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;->updateConfiguration(Landroid/content/Context;)V

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    .line 197
    iget v2, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 198
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->setResult(ILandroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->finish()V

    return-void
.end method

.method private c(I)V
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 219
    iput p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->c:I

    .line 220
    iget p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->c:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0f02fd

    .line 226
    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->f:I

    const p1, 0x7f020562

    .line 227
    iput p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->j:I

    goto :goto_0

    :cond_0
    const p1, 0x7f0f02fe

    .line 222
    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->f:I

    const p1, 0x7f020563

    .line 223
    iput p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->j:I

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->d()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->d(I)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 240
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->d:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->k(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 244
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->c:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 247
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const v0, 0x7f0f02fd

    .line 249
    invoke-static {v1, v0, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->e:I

    const v0, 0x7f0f0308

    .line 250
    invoke-static {v1, v0, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->g:I

    const v0, 0x7f0f030b

    .line 251
    invoke-static {v1, v0, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->h:I

    goto :goto_1

    :cond_2
    const v0, 0x7f0f02fe

    .line 253
    invoke-static {v1, v0, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->e:I

    const v0, 0x7f0f0309

    .line 254
    invoke-static {v1, v0, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->g:I

    const v0, 0x7f0f030a

    .line 255
    invoke-static {v1, v0, v2}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->h:I

    :goto_1
    return-void
.end method

.method private d(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->d:I

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->d()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->c()V

    return-void
.end method

.method private e()V
    .locals 2

    const v0, 0x7f13059a

    .line 260
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 261
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f130259

    .line 263
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 264
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private f()V
    .locals 2

    const v0, 0x7f13059a

    .line 268
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 269
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->d:I

    rsub-int/lit8 v1, v1, 0x64

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method private g()V
    .locals 2

    const v0, 0x7f130070

    .line 273
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 274
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f13019a

    .line 275
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f13005a

    .line 278
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 279
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f130057

    .line 280
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 281
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f130051

    .line 282
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 283
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f130592

    .line 284
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 285
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f130595

    .line 286
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 287
    iget v1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private h()V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->e()V

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->f()V

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->g()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x200

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f040268

    .line 67
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->b()V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f04026c

    goto :goto_0

    :cond_0
    const p1, 0x7f04026b

    :goto_0
    const v1, 0x7f130588

    .line 73
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 72
    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f13059a

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f020564

    .line 76
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "appWidgetId"

    .line 81
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->i:I

    .line 85
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_2

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 86
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 88
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x64

    invoke-static {p0, p1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 92
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->a()V

    :goto_1
    const p1, 0x7f13058a

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    .line 97
    new-instance v2, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$1;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;Landroid/widget/RadioGroup;)V

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 106
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v2, "background_color"

    .line 107
    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->a:I

    .line 108
    iget p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->a:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->c(I)V

    .line 109
    iget p1, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->a:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    const p1, 0x7f13058d

    .line 115
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    const v2, 0x7f13058e

    .line 116
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 117
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v3

    const-string v4, "background_alpha"

    const/16 v5, 0x1e

    .line 118
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->b:I

    .line 119
    iget v3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->b:I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->d(I)V

    .line 120
    iget v3, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->b:I

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v3, "%d%%"

    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$2;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$2;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 143
    new-instance p1, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity$3;-><init>(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->h()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    .line 158
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetConfigActivity;->a()V

    :cond_0
    return-void
.end method
