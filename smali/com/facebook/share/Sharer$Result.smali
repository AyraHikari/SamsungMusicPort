.class public Lcom/facebook/share/Sharer$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/Sharer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field final postId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/share/Sharer$Result;->postId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPostId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/facebook/share/Sharer$Result;->postId:Ljava/lang/String;

    return-object v0
.end method
