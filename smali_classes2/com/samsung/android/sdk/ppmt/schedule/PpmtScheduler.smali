.class public Lcom/samsung/android/sdk/ppmt/schedule/PpmtScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;


# static fields
.field private static final a:Ljava/lang/String; = "PpmtScheduler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V
    .locals 4

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(Landroid/content/Context;)I

    move-result v0

    .line 27
    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/PpmtScheduler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - instant"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppmt_timer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(I)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 22
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/ppmt/schedule/PpmtScheduler;->a:Ljava/lang/String;

    const-string p2, "fail to schedule. invalid params"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V
    .locals 4

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 42
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(Landroid/content/Context;)I

    move-result v0

    .line 43
    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/PpmtScheduler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppmt_timer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(I)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 v0, 0x8000000

    .line 48
    invoke-static {p1, p2, v1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v0, "alarm"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 53
    invoke-virtual {p1, v2, p3, p4, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1, v2, p3, p4, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    .line 38
    :cond_2
    :goto_1
    sget-object p1, Lcom/samsung/android/sdk/ppmt/schedule/PpmtScheduler;->a:Ljava/lang/String;

    const-string p2, "fail to schedule. invalid params"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V
    .locals 3

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 62
    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/PpmtScheduler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(Landroid/content/Context;)I

    move-result p2

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ppmt_timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 v1, 0x8000000

    .line 67
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v0, "alarm"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 71
    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
