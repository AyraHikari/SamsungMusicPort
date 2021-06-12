.class public final Lcom/samsung/android/app/music/player/SlidePlayer$doOnResume$$inlined$with$lambda$1;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;->a(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

.field final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$doOnResume$$inlined$with$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SlidePlayer$doOnResume$$inlined$with$lambda$1;->b:Lkotlin/jvm/functions/Function0;

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$doOnResume$$inlined$with$lambda$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 203
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$doOnResume$$inlined$with$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method
