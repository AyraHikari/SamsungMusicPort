.class public final Lcom/facebook/share/widget/JoinAppGroupDialog$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/JoinAppGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final data:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;->data:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/facebook/share/widget/JoinAppGroupDialog$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/facebook/share/widget/JoinAppGroupDialog$Result;->data:Landroid/os/Bundle;

    return-object v0
.end method
