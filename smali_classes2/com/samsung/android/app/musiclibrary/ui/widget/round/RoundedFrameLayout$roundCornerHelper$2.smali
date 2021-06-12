.class final Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout$roundCornerHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout$roundCornerHelper$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;
    .locals 5

    .line 17
    new-instance v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout$roundCornerHelper$2;->$context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;-><init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedFrameLayout$roundCornerHelper$2;->invoke()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    move-result-object v0

    return-object v0
.end method
