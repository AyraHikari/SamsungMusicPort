.class public Lcom/samsung/android/app/music/update/AppUpdateChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/update/AppUpdateCheckObservable;


# static fields
.field private static final a:Ljava/lang/String; = "AppUpdateChecker"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v4/app/FragmentActivity;

.field private d:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

.field private e:I

.field private f:Z

.field private final g:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->e:I

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->f:Z

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/update/AppUpdateChecker$1;-><init>(Lcom/samsung/android/app/music/update/AppUpdateChecker;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->g:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

    .line 42
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->c:Landroid/support/v4/app/FragmentActivity;

    .line 44
    check-cast p1, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->d:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/update/AppUpdateChecker;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/update/AppUpdateChecker;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/update/AppUpdateChecker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->d()V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->d:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->d:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->d:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->e(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b:Landroid/content/Context;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 50
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a()Lcom/samsung/android/app/music/update/SamsungAppsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b:Landroid/content/Context;

    const-string v2, "com.sec.android.app.music"

    iget-object v3, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->g:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/SpotifyConstants;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b:Landroid/content/Context;

    const-string v2, "key_spotify_user_location"

    const-string v3, "undefined"

    .line 55
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a()Lcom/samsung/android/app/music/update/SamsungAppsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b:Landroid/content/Context;

    const-string v2, "com.sec.android.app.music"

    iget-object v3, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->g:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->setAppUpdateStatus(I)V

    .line 62
    invoke-static {}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a()Lcom/samsung/android/app/music/update/SamsungAppsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b:Landroid/content/Context;

    const-string v2, "com.sec.android.app.music"

    iget-object v3, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->g:Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->c:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v1, "NLG_PRECONDITION"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v1, "SamsungMusic"

    const-string v2, "Update"

    const-string v3, "yes"

    .line 150
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->c:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;->sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    :cond_0
    if-nez p1, :cond_2

    .line 154
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->d()V

    goto :goto_1

    .line 155
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$AppUpdateDialogLauncher;->a(Landroid/app/Activity;Z)Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/samsung/android/app/music/update/AppUpdateChecker$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/update/AppUpdateChecker$2;-><init>(Lcom/samsung/android/app/music/update/AppUpdateChecker;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    new-instance v1, Lcom/samsung/android/app/music/update/AppUpdateChecker$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/update/AppUpdateChecker$3;-><init>(Lcom/samsung/android/app/music/update/AppUpdateChecker;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "appUpdateDialog"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->e:I

    return v0
.end method

.method public setAppUpdateStatus(I)V
    .locals 3

    .line 135
    iget v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->e:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->e:I

    .line 136
    sget-object v0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppUpdateStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentStatus : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->e:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->e:I

    invoke-static {p1}, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable$Masking;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->d()V

    .line 141
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->e:I

    invoke-static {p1}, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable$Masking;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    iget-boolean p1, p0, Lcom/samsung/android/app/music/update/AppUpdateChecker;->f:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a(Z)V

    :cond_1
    return-void
.end method
