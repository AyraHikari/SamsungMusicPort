.class public final Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;
    .locals 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewGroup"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;

    .line 63
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040034

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v1, "LayoutInflater.from(frag\u2026p_card, viewGroup, false)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method
