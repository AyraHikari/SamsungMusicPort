.class public Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static b:Z

.field private static c:Z

.field private static d:Landroid/graphics/Bitmap;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 3

    const v0, 0x7f13038f

    .line 58
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 60
    sget-object v1, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->d:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$1;-><init>(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/widget/ImageView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    sget-object v1, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$2;-><init>(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f130391

    .line 83
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 85
    new-instance v1, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$3;-><init>(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object p2
.end method

.method static synthetic a()Landroid/graphics/Bitmap;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    sput-object p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->d:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 3

    .line 136
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://cdn-su.glb.samsungmilkradio.com/static/kor/200popup.jpg"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 137
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->d:Landroid/graphics/Bitmap;

    .line 138
    new-instance v2, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment$4;-><init>(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 146
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 136
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 146
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 107
    sget-boolean v0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->b:Z

    if-nez v0, :cond_1

    .line 108
    invoke-static {}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->b()I

    move-result v0

    const-string v1, "key_radio_limit_over_do_not_show"

    const/4 v2, 0x0

    .line 111
    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    sput-boolean v2, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->c:Z

    .line 112
    sput-boolean v1, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->b:Z

    .line 114
    :cond_1
    sget-boolean p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->c:Z

    return p0
.end method

.method private static b()I
    .locals 3

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 118
    invoke-static {}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->b()I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "PlayerDialog"

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerMarketingDialogFragment: updateDoNotShowDate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_radio_limit_over_do_not_show"

    .line 121
    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 122
    sput-boolean p1, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->c:Z

    const/4 p1, 0x0

    .line 123
    sput-object p1, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->d:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 45
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f040122

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a(Landroid/app/Activity;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMarketingDialogFragment;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
