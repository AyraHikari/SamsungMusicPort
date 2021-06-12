.class final Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$multiWindowManagerImpl$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$multiWindowManagerImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;
    .locals 3

    .line 99
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$multiWindowManagerImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;-><init>(Landroid/app/Activity;)V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$multiWindowManagerImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$multiWindowManagerImpl$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object v0

    return-object v0
.end method
