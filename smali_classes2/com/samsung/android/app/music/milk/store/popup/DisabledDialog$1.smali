.class Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;Landroid/app/Dialog;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;->b:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
