.class final Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$initializeViews$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->initializeViews(Landroid/content/Context;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$initializeViews$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    .line 448
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_btn:I

    if-eq p1, v0, :cond_0

    .line 449
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$initializeViews$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getScreenOffMusicHandler$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOffTimeOut()V

    :cond_0
    return-void
.end method
