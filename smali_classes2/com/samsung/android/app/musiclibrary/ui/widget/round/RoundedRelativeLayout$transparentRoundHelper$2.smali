.class final Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout$transparentRoundHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout$transparentRoundHelper$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;
    .locals 2

    .line 24
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout$transparentRoundHelper$2;->$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout$transparentRoundHelper$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;

    move-result-object v0

    return-object v0
.end method
