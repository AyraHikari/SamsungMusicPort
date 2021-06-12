.class final Lcom/samsung/android/sdk/bixby/PathRuleInfoReader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/bixby/PathRuleInfoReader;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/sdk/bixby/data/State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/sdk/bixby/data/State;Lcom/samsung/android/sdk/bixby/data/State;)I
    .locals 0

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/bixby/data/State;->a()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 72
    check-cast p1, Lcom/samsung/android/sdk/bixby/data/State;

    check-cast p2, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/PathRuleInfoReader$1;->a(Lcom/samsung/android/sdk/bixby/data/State;Lcom/samsung/android/sdk/bixby/data/State;)I

    move-result p1

    return p1
.end method
