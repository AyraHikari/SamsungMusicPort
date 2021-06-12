.class public Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "MenuLaunchTask"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 32
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->d:Ljava/lang/String;

    .line 33
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->KEYWORD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->e:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "music_player_pref"

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_contents"

    .line 71
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask$1;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->c:Ljava/lang/String;

    const-string v2, "execute login : Already SA logged in"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0b0491

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->a(Landroid/content/Context;)Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->a(I)V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->a(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->c:Ljava/lang/String;

    return-object v0
.end method
