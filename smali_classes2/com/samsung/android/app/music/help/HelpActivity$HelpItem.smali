.class Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/help/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpItem"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/help/HelpActivity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/help/HelpActivity;ILjava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;->a:Lcom/samsung/android/app/music/help/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/help/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;->b:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;->c:Ljava/lang/String;

    return-object v0
.end method
