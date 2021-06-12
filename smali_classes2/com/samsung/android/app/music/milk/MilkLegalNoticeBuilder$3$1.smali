.class Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3;->buildNotice(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3;Landroid/content/Context;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3$1;->b:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 120
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3$1;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$3$1;->a:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
