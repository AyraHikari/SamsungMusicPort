.class public Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mRecord:Landroid/view/accessibility/AccessibilityRecord;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    return-void
.end method

.method public static getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I
    .locals 2

    .line 479
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 480
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I
    .locals 2

    .line 529
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 530
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    iget-object p0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 2

    .line 505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    :cond_0
    return-void
.end method

.method public static setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 2

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 556
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    :cond_0
    return-void
.end method

.method public static setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V
    .locals 2
    .param p0    # Landroid/view/accessibility/AccessibilityRecord;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 137
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 766
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 769
    :cond_2
    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 770
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v2, :cond_3

    .line 771
    iget-object p1, p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz p1, :cond_4

    return v1

    .line 774
    :cond_3
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    iget-object p1, p1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAddedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 660
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 621
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v0

    return v0
.end method

.method public getFromIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v0

    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getMaxScrollX()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollY()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v0

    return v0
.end method

.method public getWindowId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 751
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 742
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    return-void
.end method

.method public setAddedCount(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 674
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 635
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 700
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    return-void
.end method

.method public setFromIndex(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 383
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    return-void
.end method

.method public setItemCount(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    return-void
.end method

.method public setMaxScrollX(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 545
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 726
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    return-void
.end method

.method public setPassword(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    return-void
.end method

.method public setRemovedCount(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    return-void
.end method

.method public setScrollX(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    return-void
.end method

.method public setScrollY(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 457
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    return-void
.end method

.method public setToIndex(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    return-void
.end method
