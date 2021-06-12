.class Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Z)V
    .locals 3

    const-string v0, "SMUSIC-SV-Dlna"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;I)I

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 173
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;->onDlnaServiceBound()V

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$202(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;)Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)I

    move-result p1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    .line 178
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)V

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;I)I

    :cond_3
    :goto_0
    return-void
.end method
