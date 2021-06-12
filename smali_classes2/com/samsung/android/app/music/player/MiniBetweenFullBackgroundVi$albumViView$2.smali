.class final Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$albumViView$2;
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
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$albumViView$2;->this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ImageView;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$albumViView$2;->this$0:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f1302b0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$albumViView$2;->invoke()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method
