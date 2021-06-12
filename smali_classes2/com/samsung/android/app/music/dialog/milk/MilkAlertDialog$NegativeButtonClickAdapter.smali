.class public final Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NegativeButtonClickAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->b(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->b(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
