.class public final Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PrePunchOutStateExecutor"


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 74
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->a:Ljava/lang/String;

    const-string v2, "checkMilkFeatureLaunch() - Cannot perform because turned on my music mode."

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v3, "Music_0_7"

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v2, 0x0

    const-string v3, "Music_0_0"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->a:Ljava/lang/String;

    const-string v2, "checkMilkFeatureLaunch() - Cannot perform because false support milk feature."

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v3, "Music_0_8"

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "queue_type"

    const/4 v3, 0x0

    .line 93
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "queue"

    const-string v1, ""

    .line 96
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "radio_queue_pref"

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "queue"

    const-string v1, ""

    .line 101
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, -0x1

    const-string v2, "Music_11_3"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    goto :goto_1

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v1, "Music_0_0"

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    :goto_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 112
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$1;)V

    .line 113
    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;->a(Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor$LyricsChecker;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    const-string p3, "punchOutPage"

    .line 41
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 43
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->a:Ljava/lang/String;

    const-string p2, "execute() - Parameter is empty."

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p3, -0x1

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Playlist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x7

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "Product"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "Favorites"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p3, 0xa

    goto :goto_0

    :sswitch_3
    const-string v0, "Radio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :sswitch_4
    const-string v0, "Music"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "Setting"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p3, 0x9

    goto :goto_0

    :sswitch_6
    const-string v0, "DownloadBasket"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "Search"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p3, 0x8

    goto :goto_0

    :sswitch_8
    const-string v0, "Player"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "Lyrics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x4

    goto :goto_0

    :sswitch_a
    const-string v0, "CurrentList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x5

    :cond_1
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 68
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execute() - Parameter is wrong. ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p3, "Music_0_0"

    invoke-direct {p2, v1, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    goto :goto_1

    .line 57
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 54
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 51
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/PrePunchOutStateExecutor;->a()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78c3da69 -> :sswitch_a
        -0x77712bec -> :sswitch_9
        -0x715c78ff -> :sswitch_8
        -0x6ca0ae38 -> :sswitch_7
        -0x33584b72 -> :sswitch_6
        -0x266859d0 -> :sswitch_5
        0x473fe05 -> :sswitch_4
        0x4b123db -> :sswitch_3
        0xd098a37 -> :sswitch_2
        0x50c664cf -> :sswitch_1
        0x73e0e5f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
