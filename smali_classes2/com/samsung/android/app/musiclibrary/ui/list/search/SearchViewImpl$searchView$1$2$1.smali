.class public final Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$searchView$1$2$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;I)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$searchView$1$2$1;->a:Landroid/widget/Toast;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchViewImpl$searchView$1$2$1;->a:Landroid/widget/Toast;

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_0
    return-object p1
.end method
