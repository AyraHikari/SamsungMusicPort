.class final Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->a(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "AccountSignUpFlow"

    const-string v1, "doOnError"

    .line 83
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    instance-of p1, p1, Lcom/samsung/android/app/music/service/milk/exception/SignInFailException;

    if-eqz p1, :cond_0

    .line 85
    new-instance p1, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;

    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->a()V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method
