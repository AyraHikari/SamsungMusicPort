.class Lcom/samsung/android/app/music/main/MilkTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/main/MilkTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MilkTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MilkTask;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$4;->a:Lcom/samsung/android/app/music/main/MilkTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$4;->a:Lcom/samsung/android/app/music/main/MilkTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MilkTask;->a(Lcom/samsung/android/app/music/main/MilkTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getAppUpdateChecker()Lcom/samsung/android/app/music/update/AppUpdateChecker;

    move-result-object p1

    const/16 p4, 0x9

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    .line 284
    invoke-virtual {p1}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x100

    .line 286
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->setAppUpdateStatus(I)V

    :cond_2
    :goto_0
    return-void
.end method
