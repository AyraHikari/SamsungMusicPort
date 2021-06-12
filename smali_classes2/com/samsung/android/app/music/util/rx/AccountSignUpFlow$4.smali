.class final Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->c(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/subjects/PublishSubject;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lio/reactivex/subjects/PublishSubject;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$4;->a:Lio/reactivex/subjects/PublishSubject;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$4;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 96
    new-instance p1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;

    invoke-direct {p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$4;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->a(Lio/reactivex/subjects/PublishSubject;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$4;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "showSignUpDialog"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$4;->a(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
