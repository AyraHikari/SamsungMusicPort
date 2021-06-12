.class public Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 59
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V

    .line 63
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-MultiWindow"

    const-string v0, "setStateChangeListener(), mMultiWindowActivity is null"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;)Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-MultiWindow"

    const-string v2, "isMultiWindow(), mMultiWindowActivity is null"

    .line 124
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 129
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "SMUSIC-MultiWindow"

    const-string v2, "isMultiWindow(), Exception"

    .line 135
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v0, "SMUSIC-MultiWindow"

    const-string v2, "isMultiWindow(), NullPointerException"

    .line 133
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string v0, "SMUSIC-MultiWindow"

    const-string v2, "isMultiWindow(), NoClassDefFoundError"

    .line 131
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public b()Landroid/graphics/Rect;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-MultiWindow"

    const-string v1, "getRectInfo(), mMultiWindowActivity is null"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-MultiWindow"

    const-string v1, "isScaledWindow(), mMultiWindowActivity is null"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isScaleWindow()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    const-string v0, "SMUSIC-MultiWindow"

    const-string v1, "release()"

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 168
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->a:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 169
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->b:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;

    return-void
.end method
