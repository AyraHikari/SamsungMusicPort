.class final Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$7;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$IntProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$IntProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1157
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    .line 1165
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    .line 1160
    invoke-virtual {p1, p2}, Landroid/view/View;->setBottom(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1157
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$7;->a(Landroid/view/View;I)V

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1157
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$7;->a(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
