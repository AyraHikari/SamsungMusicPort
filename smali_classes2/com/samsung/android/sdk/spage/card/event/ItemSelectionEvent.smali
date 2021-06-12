.class public final Lcom/samsung/android/sdk/spage/card/event/ItemSelectionEvent;
.super Lcom/samsung/android/sdk/spage/card/event/Event;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/spage/card/event/Event;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selectedItemIndex"

    const/4 v1, -0x1

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/spage/card/event/ItemSelectionEvent;->a:I

    const-string v0, "selectedItem"

    const-string v1, ""

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/event/ItemSelectionEvent;->b:Ljava/lang/String;

    return-void
.end method
