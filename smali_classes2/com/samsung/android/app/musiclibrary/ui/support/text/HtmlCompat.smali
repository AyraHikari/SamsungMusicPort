.class public Lcom/samsung/android/app/musiclibrary/ui/support/text/HtmlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 2

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, v0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method
