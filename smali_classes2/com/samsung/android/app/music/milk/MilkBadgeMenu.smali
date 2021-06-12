.class public Lcom/samsung/android/app/music/milk/MilkBadgeMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;IZ)V
    .locals 3

    const v0, 0x7f040004

    .line 26
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 27
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130109

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f13010a

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-lez p2, :cond_1

    if-eqz p3, :cond_0

    const-string p2, "N"

    .line 34
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 39
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    :goto_0
    new-instance p2, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0b0209

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 54
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "show_button_background"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x18

    if-lt p0, p1, :cond_2

    const-string p0, "MilkBadgeMenu"

    const-string p1, "SHOW_BUTTON_BACKGROUND"

    .line 59
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f13010c

    .line 61
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f020511

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
