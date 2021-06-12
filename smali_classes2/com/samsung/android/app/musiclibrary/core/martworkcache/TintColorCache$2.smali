.class Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 52
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;->publish()V

    const/4 p1, 0x1

    return p1
.end method
