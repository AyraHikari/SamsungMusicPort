.class public final Lcom/samsung/android/sdk/spage/card/event/SearchTextEvent;
.super Lcom/samsung/android/sdk/spage/card/event/Event;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/spage/card/event/Event;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "searchText"

    const-string v1, ""

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/event/SearchTextEvent;->a:Ljava/lang/String;

    return-void
.end method
