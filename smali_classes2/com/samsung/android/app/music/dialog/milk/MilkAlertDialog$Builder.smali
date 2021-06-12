.class public Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->f:Ljava/lang/CharSequence;

    .line 225
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(ILjava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->k:Ljava/lang/String;

    .line 266
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->h:Ljava/lang/String;

    .line 232
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->n:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;
    .locals 2

    .line 324
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;)V

    return-object v0
.end method

.method public b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->i:Ljava/lang/CharSequence;

    .line 249
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->k:Ljava/lang/String;

    .line 256
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->c:Ljava/lang/CharSequence;

    return-object p0
.end method
