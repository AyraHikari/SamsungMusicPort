.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 63
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;

    .line 64
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;)V

    const/4 p1, 0x1

    return p1
.end method
