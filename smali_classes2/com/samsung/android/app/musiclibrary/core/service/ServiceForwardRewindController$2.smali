.class Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForward()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->forward()V

    return-void
.end method

.method public onRewind()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->rewind()V

    return-void
.end method
