.class Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$2;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$2;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;

    iget-object p1, p1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->a:Lio/reactivex/subjects/PublishSubject;

    if-nez p1, :cond_0

    const-string p1, "AccountSignUpFlow"

    const-string p2, "onClick. publish subject is null"

    .line 206
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog$2;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;

    iget-object p1, p1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;->a:Lio/reactivex/subjects/PublishSubject;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
