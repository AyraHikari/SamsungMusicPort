.class Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(ZZLandroid/net/Uri;)V
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;)Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;->onContentChanged(ZZLandroid/net/Uri;)V

    return-void
.end method
