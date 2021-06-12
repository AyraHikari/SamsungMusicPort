.class Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterLiteral"
.end annotation


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-char p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;->a:C

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 0

    .line 666
    iget-char p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;->a:C

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
