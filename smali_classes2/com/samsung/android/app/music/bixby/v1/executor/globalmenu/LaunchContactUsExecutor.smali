.class public Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchContactUsExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "LaunchContactUsExecutor"


# instance fields
.field private final b:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/app/Activity;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchContactUsExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchContactUsExecutor;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LAUNCH_CONTACT_US"

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchContactUsExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchContactUsExecutor;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchContactUsExecutor;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a(Landroid/app/Activity;)V

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 43
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v1, "ContactUs"

    invoke-direct {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchContactUsExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchContactUsExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_0
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
