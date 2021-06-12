.class Landroid/support/v7/widget/SeslDatePicker$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslDatePicker;Landroid/os/Looper;)V
    .locals 0

    .line 301
    iput-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 304
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 305
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 329
    :pswitch_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$400(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    .line 331
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 332
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 333
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 336
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 337
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 338
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 340
    invoke-static {}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result p1

    if-eq p1, v2, :cond_0

    .line 342
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 343
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    :cond_0
    return-void

    .line 348
    :cond_1
    invoke-static {}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->getField_TYPE_TOOLTIP()I

    move-result p1

    if-eq p1, v2, :cond_2

    .line 350
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/support/v4/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 351
    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/support/v4/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 354
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    iget-object v4, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p1, v4, :cond_3

    .line 356
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 357
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 358
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$1000(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 359
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$1000(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 360
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 361
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 362
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 363
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    return-void

    .line 367
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    const v4, 0x3ecccccd    # 0.4f

    if-ne p1, v1, :cond_4

    .line 369
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 370
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 371
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 374
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 375
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 376
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 377
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$000(Landroid/support/v7/widget/SeslDatePicker;)V

    return-void

    .line 381
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    if-nez p1, :cond_5

    .line 383
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 384
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1000(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 385
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 386
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 387
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 388
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 389
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 390
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 391
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$000(Landroid/support/v7/widget/SeslDatePicker;)V

    goto/16 :goto_2

    .line 392
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$800(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result p1

    iget-object v5, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v5}, Landroid/support/v7/widget/SeslDatePicker;->access$900(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v5

    sub-int/2addr v5, v1

    if-ne p1, v5, :cond_9

    .line 394
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 395
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v3, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->access$1000(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 396
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 397
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 398
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$700(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 399
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 400
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 401
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$600(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 402
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$000(Landroid/support/v7/widget/SeslDatePicker;)V

    goto/16 :goto_2

    .line 308
    :pswitch_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v2

    if-gt p1, v2, :cond_8

    iget-object p1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    .line 309
    invoke-static {p1}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    if-ge p1, v1, :cond_6

    goto :goto_1

    .line 313
    :cond_6
    new-instance p1, Landroid/text/SpannableString;

    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    .line 314
    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->access$100(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslDatePicker;->access$200(Landroid/support/v7/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 315
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 316
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$300(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$400(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    if-nez v0, :cond_7

    .line 320
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_switch_to_wheel_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->access$500(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$string;->sesl_date_picker_switch_to_calendar_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslDatePicker$2;->this$0:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v1}, Landroid/support/v7/widget/SeslDatePicker;->access$300(Landroid/support/v7/widget/SeslDatePicker;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    :goto_1
    return-void

    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
