.class public final Lcom/samsung/android/app/music/main/LoginActivityTask$mOnApiHandleCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/LoginActivityTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/LoginActivityTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/LoginActivityTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/music/main/LoginActivityTask$mOnApiHandleCallback$1;->a:Lcom/samsung/android/app/music/main/LoginActivityTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    const/16 p1, 0x191

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 102
    instance-of p1, p4, Lcom/samsung/android/app/music/model/ResponseModel;

    if-eqz p1, :cond_0

    const-string p1, "LoginActivityTask"

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "signin fail + "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p4, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {p4}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p4}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result p1

    const/16 p2, 0xc1d

    if-eq p1, p2, :cond_0

    .line 105
    new-instance p1, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;

    iget-object p2, p0, Lcom/samsung/android/app/music/main/LoginActivityTask$mOnApiHandleCallback$1;->a:Lcom/samsung/android/app/music/main/LoginActivityTask;

    invoke-static {p2}, Lcom/samsung/android/app/music/main/LoginActivityTask;->a(Lcom/samsung/android/app/music/main/LoginActivityTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a()V

    :cond_0
    return-void
.end method
