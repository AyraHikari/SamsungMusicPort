.class final Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$setOnKeyListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->setOnKeyListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$setOnKeyListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$setOnKeyListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$isDestroyed$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, "event"

    .line 356
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const-string p3, "SMUSIC-SOM"

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenOffMusicService onKey() - action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    return v0

    .line 360
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$setOnKeyListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$performKeyUp(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;I)Z

    move-result p1

    return p1

    .line 359
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$setOnKeyListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$performKeyDown(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
