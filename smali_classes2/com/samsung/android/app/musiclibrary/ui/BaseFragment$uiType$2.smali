.class final Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$uiType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$uiType$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$uiType$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$uiType$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
