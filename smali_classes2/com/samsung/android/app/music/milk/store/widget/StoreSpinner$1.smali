.class Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner$1;->a:Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "StoreSpinner"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected : view - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner$1;->a:Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->a(Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner$1;->a:Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->a(Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner$1;->a:Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->b(I)V

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner$1;->a:Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->a(Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner$1;->a:Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->a(Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    return-void
.end method
