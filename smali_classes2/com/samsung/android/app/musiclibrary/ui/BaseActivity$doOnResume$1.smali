.class public final Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$doOnResume$1;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->doOnResume(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 650
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$doOnResume$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$doOnResume$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 653
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method
