.class Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;->a(Lio/reactivex/disposables/Disposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5$1;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x1e45

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5$1;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;->b:Lio/reactivex/subjects/PublishSubject;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5$1;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;

    iget-object p1, p1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    :cond_1
    return-void
.end method
