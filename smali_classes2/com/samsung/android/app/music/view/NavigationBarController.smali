.class public final Lcom/samsung/android/app/music/view/NavigationBarController;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/view/NavigationBarController;)Landroid/app/Activity;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/view/NavigationBarController;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    return-object p0
.end method

.method private b(Landroid/app/Activity;)Z
    .locals 1

    .line 146
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130567

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->a:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NavigationBarController;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 96
    :cond_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->a:Landroid/app/Activity;

    .line 97
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->c:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result v0

    .line 129
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->h(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 130
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "android.view.WindowManager$LayoutParams"

    const-string v3, "semSetNavigationBarIconColor"

    .line 131
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 132
    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00b6

    .line 136
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 135
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 138
    invoke-static {v0, p1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->a:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->a:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NavigationBarController;->b(Landroid/app/Activity;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->c:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->c:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->c:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    .line 115
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->a:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/view/NavigationBarController;->a(Landroid/app/Activity;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onDestroyCalled()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->a:Landroid/app/Activity;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->b:Landroid/view/View;

    return-void
.end method

.method public onStartCalled()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->c:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->c:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    new-instance v1, Lcom/samsung/android/app/music/view/NavigationBarController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/view/NavigationBarController$1;-><init>(Lcom/samsung/android/app/music/view/NavigationBarController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->a(Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;)V

    return-void
.end method

.method public onStopCalled()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->c:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NavigationBarController;->c:Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver;->a(Lcom/samsung/android/app/musiclibrary/ui/common/navigation/NavigationSettingObserver$OnSettingChangeListener;)V

    :cond_0
    return-void
.end method
