.class public final Lcom/facebook/share/widget/CreateAppGroupDialog$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/CreateAppGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$Result;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/CreateAppGroupDialog$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog$Result;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$Result;->id:Ljava/lang/String;

    return-object v0
.end method
