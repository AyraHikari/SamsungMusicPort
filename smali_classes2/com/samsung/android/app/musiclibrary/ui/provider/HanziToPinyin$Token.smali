.class public Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->a:I

    .line 131
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->b:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->c:Ljava/lang/String;

    return-void
.end method
