.class public Lcom/samsung/android/app/music/browse/BrowseBehavior;
.super Landroid/support/design/widget/AppBarLayout$Behavior;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/samsung/android/app/music/player/PlayerLaunchable;

.field private final c:Landroid/support/v7/app/ActionBar;

.field private final d:Landroid/support/v7/widget/Toolbar;

.field private e:I

.field private f:Landroid/view/Menu;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/design/widget/AppBarLayout;Landroid/support/v7/widget/Toolbar;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->h:Z

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a:Landroid/app/Activity;

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a:Landroid/app/Activity;

    instance-of v1, v1, Lcom/samsung/android/app/music/player/PlayerLaunchable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a:Landroid/app/Activity;

    check-cast v1, Lcom/samsung/android/app/music/player/PlayerLaunchable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->b:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    .line 53
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->j(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->g:Z

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a:Landroid/app/Activity;

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->c:Landroid/support/v7/app/ActionBar;

    .line 55
    iput-object p3, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->d:Landroid/support/v7/widget/Toolbar;

    .line 56
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->isCollapsed()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->i:Z

    .line 57
    new-instance p1, Lcom/samsung/android/app/music/browse/BrowseBehavior$1;

    invoke-direct {p1, p0, p4, p5}, Lcom/samsung/android/app/music/browse/BrowseBehavior$1;-><init>(Lcom/samsung/android/app/music/browse/BrowseBehavior;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void
.end method

.method private a(Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 5

    const-string v0, "BrowseBehavior"

    const-string v1, "updateView"

    .line 70
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    .line 72
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    sub-int v0, p5, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->i:Z

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->d:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_1

    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 82
    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->g:Z

    const v3, 0x7f04018c

    if-eqz v2, :cond_2

    const v2, 0x7f0f0041

    and-int/lit16 v1, v1, -0x2001

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge p5, v2, :cond_3

    const v2, 0x7f0f003a

    and-int/lit16 v1, v1, -0x2001

    goto :goto_1

    :cond_3
    const v2, 0x7f0f0042

    const v3, 0x7f04018a

    or-int/lit16 v1, v1, 0x2000

    .line 98
    :goto_1
    iget v4, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->e:I

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 100
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->c:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4, v3}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 101
    iput v3, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->e:I

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_5
    int-to-float p5, p5

    .line 109
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p5, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float p5, p5, p1

    const v0, 0x3f969696

    mul-float p5, p5, v0

    sub-float/2addr p1, p5

    const/4 p5, 0x0

    cmpl-float v0, p1, p5

    if-lez v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-eqz p2, :cond_7

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    if-eqz p3, :cond_8

    .line 116
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    if-eqz p4, :cond_9

    .line 119
    invoke-virtual {p4, p1}, Landroid/view/View;->setAlpha(F)V

    .line 123
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->f:Landroid/view/Menu;

    if-eqz p1, :cond_a

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a:Landroid/app/Activity;

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 125
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->f:Landroid/view/Menu;

    const p3, 0x7f130027

    invoke-interface {p2, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(Landroid/view/MenuItem;I)V

    .line 126
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->f:Landroid/view/Menu;

    const p3, 0x7f130028

    invoke-interface {p2, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(Landroid/view/MenuItem;I)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(I)V

    :cond_a
    return-void
.end method

.method private a(Landroid/view/MenuItem;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 139
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 142
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x7f130027

    if-ne p1, v1, :cond_2

    const p1, 0x7f13010b

    .line 144
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 145
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/BrowseBehavior;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/BrowseBehavior;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->h:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 203
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->f:Landroid/view/Menu;

    return-void
.end method

.method public a(Z)V
    .locals 5

    const-string v0, "BrowseBehavior"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView isNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsNightMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->b:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->b:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/PlayerLaunchable;->isFullPlayerActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BrowseBehavior"

    const-string v0, "updateView full player active"

    .line 152
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 159
    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->g:Z

    const v3, 0x7f04018a

    const v4, 0x7f04018c

    if-eqz v2, :cond_1

    if-eqz p1, :cond_4

    and-int/lit16 v1, v1, -0x2001

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    or-int/lit16 v1, v1, 0x2000

    :goto_0
    const v4, 0x7f04018a

    goto :goto_1

    .line 169
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->i:Z

    if-eqz v2, :cond_3

    and-int/lit16 v1, v1, -0x2001

    goto :goto_1

    :cond_3
    or-int/lit16 v1, v1, 0x2000

    goto :goto_0

    .line 178
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->c:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->f:Landroid/view/Menu;

    if-eqz v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a:Landroid/app/Activity;

    if-eqz p1, :cond_5

    const p1, 0x7f0f0041

    goto :goto_2

    :cond_5
    const p1, 0x7f0f003a

    .line 183
    :goto_2
    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->f:Landroid/view/Menu;

    const v1, 0x7f130027

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(Landroid/view/MenuItem;I)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->f:Landroid/view/Menu;

    const v1, 0x7f130028

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(Landroid/view/MenuItem;I)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseBehavior;->a(I)V

    :cond_6
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/BrowseBehavior;->h:Z

    return-void
.end method
