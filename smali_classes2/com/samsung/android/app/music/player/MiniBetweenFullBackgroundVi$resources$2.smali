.class final Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$resources$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/res/Resources;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$resources$2;->this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/res/Resources;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$resources$2;->this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$resources$2;->invoke()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
