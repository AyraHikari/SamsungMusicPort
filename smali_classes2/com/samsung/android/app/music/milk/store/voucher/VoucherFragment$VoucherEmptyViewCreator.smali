.class final Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$VoucherEmptyViewCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VoucherEmptyViewCreator"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$VoucherEmptyViewCreator;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$VoucherEmptyViewCreator;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherFragment$VoucherEmptyViewCreator;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f040055

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1301f7

    .line 224
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b02c7

    .line 225
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const-string v3, "it"

    .line 226
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "LayoutInflater.from(cont\u2026     }\n\n                }"

    .line 222
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
