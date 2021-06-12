.class public Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mz/common/network/parser/ParserSSPMovie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParsingData"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field final synthetic d:Lcom/mz/common/network/parser/ParserSSPMovie;


# direct methods
.method public constructor <init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->d:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->a:Ljava/lang/String;

    .line 290
    iput-object p3, p0, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->b:Ljava/lang/String;

    .line 291
    iput-object p4, p0, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;->c:Ljava/lang/String;

    return-void
.end method
