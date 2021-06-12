.class final Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a:Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private final a(ILjava/lang/Runnable;)V
    .locals 0

    .line 485
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;ILjava/lang/Runnable;)V
    .locals 0

    .line 464
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetProvider$UpdateHandler;->a(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 475
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 476
    instance-of v0, p1, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 477
    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 468
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 469
    instance-of v0, p1, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 470
    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
